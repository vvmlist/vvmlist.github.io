import requests
import time
import random

HTB_TOKEN = "redacted"

def fetch_htb_retired_machines():
    """Fetch all retired machines from HTB API"""
    print("[*] Fetching HTB retired machines...")
    
    headers = {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:147.0) Gecko/20100101 Firefox/147.0',
        'Accept': 'application/json, text/plain, */*',
        'Accept-Language': 'en-US,en;q=0.9',
        'Authorization': f'Bearer {HTB_TOKEN}',
        'Origin': 'https://app.hackthebox.com',
        'Referer': 'https://app.hackthebox.com/',
    }
    
    all_machines = []
    page = 1
    
    while True:
        print(f"[*] Fetching page {page}...")
        
        try:
            # Add human-like delay
            time.sleep(random.uniform(1.5, 3.0))
            
            url = f'https://labs.hackthebox.com/api/v5/machines?per_page=100&state=retired&page={page}'
            response = requests.get(url, headers=headers, timeout=10)
            response.raise_for_status()
            
            data = response.json()
            machines = data.get('data', [])
            
            if not machines:
                break
            
            all_machines.extend(machines)
            print(f"[+] Retrieved {len(machines)} machines from page {page}")
            
            # Check if there are more pages
            if len(machines) < 100:
                break
            
            page += 1
            
        except Exception as e:
            print(f"[-] Error fetching page {page}: {e}")
            break
    
    print(f"[+] Total retired machines fetched: {len(all_machines)}")
    return all_machines

def save_machine_list(machines, filename='htb_retired_machines.txt'):
    """Save machine list to a plain text file"""
    
    # Sort by release date (most recent first)
    sorted_machines = sorted(
        machines,
        key=lambda x: x.get('release', ''),
        reverse=True
    )
    
    with open(filename, 'w', encoding='utf-8') as f:
        f.write("HackTheBox Retired Machines\n")
        f.write("=" * 80 + "\n")
        f.write(f"Total Machines: {len(sorted_machines)}\n")
        f.write("=" * 80 + "\n\n")
        
        for machine in sorted_machines:
            f.write(f"{machine.get('name')}\n")
    
    print(f"[+] Saved {len(sorted_machines)} machines to {filename}")

def main():
    print("=" * 60)
    print("HTB Retired Machines List Exporter")
    print("=" * 60)
    
    # Fetch all retired machines
    machines = fetch_htb_retired_machines()
    
    if not machines:
        print("[-] No retired machines found. Exiting.")
        return
    
    # Save to file
    save_machine_list(machines)
    
    print("\n[+] Done!")

if __name__ == "__main__":
    main()