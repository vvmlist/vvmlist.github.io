import requests
import time
import random
from bs4 import BeautifulSoup

HMVM_COOKIE = "redacted"

VVMLIST_MACHINES = {
    'breakout', 'supra', 'luz', 'sedem', 'minimal', 'friendly', 'teacher', 'dejavu',
    'apaches', 'ripper', 'condor', 'twisted', 'simple', 'economists', 'atom', 'roosterrun',
    'medusa', 'again', 'savesanta', 'bounty', 'forbidden', 'friendly3', 'family2', 'noob',
    'talk', 'w140', 'number', 'ephemeral3', 'tajer', 'first', 'printer', 'chromatica',
    'factorspace', 'xmas', 'jo2024', 'comingsoon', 'aurora', 'controller', 'cachalot',
    'aqua', 'driftingblues8', 'quick3', 'tripladvisor', 'emma', 'otp', 'orasi', 'azer',
    'method', 'eyes', 'logan', 'tranquil', 'otte', 'zero', 'zeug', 'baseme', 'christmas',
    'blackhat', 'anaximandre', 'inkplot', 'homage', 'dc03', 'doc', 'zday', 'vivifytech',
    'university', 'run', 'crossbow', 'zurrak', 't800', 'darkmatter', 'kitty', 'broken',
    'winter', 'adria', 'stardust', 'stagiaire', 'friendly2', 'system', 'attack', 'confusion',
    'dc02', 'flower', 'thefool', 'uvalde', 'immortal', 'up', 'principle2', 'nightcity',
    'publisher', 'omura', 'quick2', 'light', 'zon', 'superhuman', 'decode', 'stars',
    'hacked', 'tagged', 'keys', 'learn2code', 'colors', 'democracy', 'hommie', 'tornado',
    'icecream', 'lookup', 'registry', 'webmaster', 'logan2', 'flossy', 'birthday', 'thewall',
    'convert', 'deba', 'dc01', 'find', 'runas', 'suuk', 'eighty', 'hundred', 'corrosion3',
    'devguru', 'hell', 'suidy', 'moosage', 'beloved', 'icarus', 'za1', 'leet', 'printer2',
    'zen', 'nowords', 'ginger', 'crazymed', 'juggling', 'insomnia', 'vulny', 'listen',
    'wild', 'chronos', 'gift', 'faust', 'soul', 'nessus', 'troya', 'animetronic', 'literal',
    'murph', 'arroutada', 'metamorphose', 'airbind', 'demons', 'messages', 'vinylizer',
    'hotel', 'catland', 'blackwidow', 'canto', 'doll', 'alzheimer', 'lupinone', 'cve1',
    'darkside', 'hidden', 'helium', 'oliva', 'coffeeshop', 'preload', 'blackhat2', 'casino',
    'isengard', 'unbakedpie', 'whitedoor', 'qweasd', 'slowman', 'taurus', 'speed', 'tron',
    'alive', 'away', 'movie', 'titan', 'rick', 'echoed', 'warez', 'hackingtoys', 'government',
    'quandary1', 'art', 'liceo', 'quick', 'observer', 'perlman', 'wave', 'family', 'pwned',
    'area51', 'always', 'rubies', 'influencer', 'dentacare', 'liar', 'hash', 'deeper',
    'visions', 'five', 'quick4', 'tiny', 'oldschool', 'choc', 'jabita', 'translator',
    'locker', 'may', 'ephemeral', 'bruteforcelab', 'hannah', 'universe', 'texte', 'diophante',
    'bah', 'pipy', 'codeshield', 'opacity', 'quick5', 'fianso', 'pam', 'ephemeral2',
    'random', 'fate', 'momentum2', 'connection', 'crack', 'pyrat', 'pingme', 'comet',
    'dance', 'espo', 'pickle', 'hostname', 'narcos', 'boxing', 'milk', 'slackware',
    'bunny', 'principle', 'suidyrevenge', 'nebula', 'adroit', 'smol', 'grotesque3',
    'driftingblues7', 'crossroads', 'doubletrouble', 'driftingblues5', 'gigachad',
    'drippingblues', 'grotesque2', 'driftingblues3', 'driftingblues6', 'driftingblues9 final',
    'grotesque', 'driftingblues9'
}

def fetch_hmvm_machines():
    """Fetch all machines from HackMyVM"""
    print("[*] Fetching HackMyVM machines...")
    
    headers = {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:147.0) Gecko/20100101 Firefox/147.0',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8',
        'Accept-Language': 'en-US,en;q=0.9',
        'Cookie': f'PHPSESSID={HMVM_COOKIE}',
        'Referer': 'https://hackmyvm.eu/',
    }
    
    all_machines = []
    page = 1
    
    while True:
        print(f"[*] Fetching page {page}...")
        
        try:
            # Add human-like delay
            time.sleep(random.uniform(1.5, 3.0))
            
            if page == 1:
                url = 'https://hackmyvm.eu/machines/'
            else:
                url = f'https://hackmyvm.eu/machines/?p={page}'
            
            response = requests.get(url, headers=headers, timeout=10)
            response.raise_for_status()
            
            soup = BeautifulSoup(response.text, 'html.parser')
            
            # Find machine entries - try multiple selectors
            machine_elements = []
            
            # Try finding table rows
            tables = soup.find_all('table')
            for table in tables:
                rows = table.find_all('tr')[1:]  # Skip header
                if rows:
                    machine_elements = rows
                    break
            
            if not machine_elements:
                print(f"[!] No machines found on page {page}, stopping.")
                break
            
            page_machines = []
            for element in machine_elements:
                # Extract machine name
                cells = element.find_all('td')
                if cells and len(cells) > 0:
                    # Get the first cell which contains the machine name
                    first_cell = cells[0]
                    
                    # Try to find link first (machine name is usually in a link)
                    link = first_cell.find('a')
                    if link:
                        machine_name = link.get_text().strip().lower()
                    else:
                        machine_name = first_cell.get_text().strip().lower()
                    
                    # Remove "to hack" suffix if present
                    if machine_name.endswith('to hack'):
                        machine_name = machine_name.replace('to hack', '').strip()
                    
                    if machine_name and len(machine_name) > 0:
                        page_machines.append(machine_name)
                        print(f"  DEBUG: Found machine '{machine_name}'")
            
            if not page_machines:
                print(f"[!] Could not parse machines on page {page}, stopping.")
                break
            
            all_machines.extend(page_machines)
            print(f"[+] Retrieved {len(page_machines)} machines from page {page}")
            
            # Check if there's a next page link
            next_page = soup.find('a', string=lambda t: t and 'next' in t.lower()) or \
                       soup.find('a', attrs={'rel': 'next'})
            
            if not next_page and len(page_machines) < 15:
                break
            
            page += 1
            
            # Safety limit
            if page > 100:
                print("[!] Reached safety limit of 100 pages")
                break
            
        except Exception as e:
            print(f"[-] Error fetching page {page}: {e}")
            break
    
    print(f"[+] Total machines fetched: {len(all_machines)}")
    return all_machines

def main():
    print("=" * 60)
    print("HackMyVM Machines NOT on VVMList Finder")
    print("=" * 60)
    
    # Fetch HackMyVM machines
    hmvm_machines = fetch_hmvm_machines()
    
    if not hmvm_machines:
        print("[-] No machines found on HackMyVM. Exiting.")
        return
    
    # Find machines NOT on VVMList
    missing_machines = []
    
    print("\n[*] Comparing machines...")
    for machine in hmvm_machines:
        # Machine is already lowercase and cleaned from fetch
        if machine not in VVMLIST_MACHINES:
            missing_machines.append(machine)
            print(f"  MISSING: '{machine}'")
    
    print("\n" + "=" * 60)
    print(f"[+] FOUND {len(missing_machines)} HACKMYVM MACHINES NOT ON VVMLIST")
    print("=" * 60)
    
    if missing_machines:
        print("\n")
        for i, machine in enumerate(missing_machines, 1):
            print(f"{i}. {machine}")
    else:
        print("\n[-] All HackMyVM machines are on VVMList!")
    
    print("\n" + "=" * 60)
    print(f"Total HackMyVM Machines: {len(hmvm_machines)}")
    print(f"On VVMList: {len(VVMLIST_MACHINES)}")
    print(f"NOT on VVMList: {len(missing_machines)}")
    print("=" * 60)
    
    # Save to file
    if missing_machines:
        with open('hmvm_not_on_vvmlist.txt', 'w', encoding='utf-8') as f:
            f.write("HackMyVM Machines NOT on VVMList\n")
            f.write("=" * 80 + "\n\n")
            for machine in missing_machines:
                f.write(f"{machine}\n")
        
        print(f"\n[+] Results saved to 'hmvm_not_on_vvmlist.txt'")

if __name__ == "__main__":
    main()