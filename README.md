# azure-vecka38

# Uppgift 5 – Parallellisering

Jag testade att köra pipelinen sekventiellt och parallellt för att se skillnaden.  
- Sekventiell körning: ca 36 sekunder  
- Parallell körning: ca 30 sekunder  


# Uppgift 6 – Snabb test-pipeline
En dedikerad pipeline kör bara tester på varje push till `dev`. Den installerar beroenden och kör `npm test` med npm-cache för att gå snabbt. Inga Docker-steg här – poängen är snabb feedback under utveckling. Full CI/CD körs på `main`.
