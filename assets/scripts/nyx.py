import requests
from bs4 import BeautifulSoup

VVMLIST_MACHINES = {
    'mail', 'hunter', 'zone', 'hosting', 'hook', 'exec', 'node', 'bund', 'share',
    'shop', 'fing', 'look', 'raw', 'goetia', 'bind', 'remote', 'gen', 'send',
    'gattaca', 'real', 'controler', 'responder', 'war', 'arpon', 'service', 'noob',
    'dump', 'mux', 'unit', 'tom', 'psymin', 'robot', 'zero', 'spooisong', 'admin',
    'doctor', 'beginner', 'blog', 'flash', 'air', 'load', 'eternal', 'dark', 'deploy',
    'fuser', 'hackingstation', 'basic', 'wrapp', 'lang', 'jarjar', 'code', 'printer',
    'plot', 'wicca', 'transfer', 'key', 'jenk', 'yincana', 'plex', 'chain', 'discover',
    'lost', 'cap', 'internal', 'druid', 'secrets', 'listen', 'shock', 'play', 'yourwaf',
    'brain', 'ceres', 'backdoor', 'ready', 'tunnel', 'slash', 'mywaf', 'call', 'nyx',
    'trace', 'sun', 'bunker', 'belial', 'agent', 'monitor', 'blogger', 'express', 'solar',
    'twitx', 'friends', 'shared', 'developer', 'fire', 'experience', 'diff3r3nts3',
    'future', 'cache', 'external', 'first', 'hidden', 'leak', 'infected', 'serve',
    'hat', 'travel', 'system', 'lower'
}

def fetch_vulnyx_machines():
    """Fetch all machines from vulnyx.com - all machines are on the main page"""
    print("[*] Fetching Vulnyx machines from https://vulnyx.com ...")

    headers = {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:147.0) Gecko/20100101 Firefox/147.0',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8',
        'Accept-Language': 'en-US,en;q=0.9',
    }

    response = requests.get('https://vulnyx.com', headers=headers, timeout=10)
    response.raise_for_status()

    soup = BeautifulSoup(response.text, 'html.parser')

    machines = []
    table = soup.find('table')
    rows = table.find_all('tr')[1:]  # Skip header row

    for row in rows:
        cells = row.find_all('td')
        if len(cells) >= 4:
            # Name is in the 4th column (index 3)
            name = cells[3].get_text().strip().lower()
            if name:
                machines.append(name)

    print(f"[+] Total Vulnyx machines fetched: {len(machines)}")
    return machines

def main():
    print("=" * 60)
    print("Vulnyx Machines NOT on VVMList Finder")
    print("=" * 60)

    vulnyx_machines = fetch_vulnyx_machines()

    if not vulnyx_machines:
        print("[-] No machines found on Vulnyx. Exiting.")
        return

    # Compare
    missing = [m for m in vulnyx_machines if m not in VVMLIST_MACHINES]

    print("\n" + "=" * 60)
    print(f"[+] FOUND {len(missing)} VULNYX MACHINES NOT ON VVMLIST")
    print("=" * 60 + "\n")

    for i, machine in enumerate(missing, 1):
        print(f"{i}. {machine}")

    print("\n" + "=" * 60)
    print(f"Total Vulnyx Machines:  {len(vulnyx_machines)}")
    print(f"On VVMList:             {len(vulnyx_machines) - len(missing)}")
    print(f"NOT on VVMList:         {len(missing)}")
    print("=" * 60)

    # Save to file
    if missing:
        with open('vulnyx_not_on_vvmlist.txt', 'w', encoding='utf-8') as f:
            for machine in missing:
                f.write(f"{machine}\n")
        print(f"\n[+] Saved to 'vulnyx_not_on_vvmlist.txt'")

if __name__ == "__main__":
    main()