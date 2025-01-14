# Sana Salud

## Description
This project is a database for a health insurance company called Sana Salud. It contains the following features:
- The scripts to create the OLTP and OLAP databases.
- The ETLs to extract, transform, and load the data from the OLTP database to the OLAP database.
- The PowerBI reports to visualize the data in the OLAP database.

## Dashboard Images

### Factura Dashboard
![Factura Dashboard](https://github.com/Alejo-FM/sanasalud-project/blob/main/public/Factura.png)

### Intervención Dashboard
![Intervención Dashboard](https://github.com/Alejo-FM/sanasalud-project/blob/main/public/Intervencion.png)

## Team Members
- [**Alejandro Molina**](https://github.com/Alejo-FM)
- [**Sandro Portanova**](https://github.com/Sspa1)

## Commands availables
1. Clone the project
```bash
git clone https://github.com/Alejo-FM/sanasalud-project.git
```

2. Execute the following command to initialize the project
```bash
npm start
```

3. Execute the following command to reset the database (delete all and create again) 
```bash
npm run reset
```

4. Execute the following command to delete the container
```bash
npm run delete
```

## Details to use the ETLs

To use the ETLs, you need to set the following environment variables in `Edit > Set Environment Variables`:

- `DB_HOST`: The hostname of your database.
- `DB_USER`: The username to access your database.
- `DB_PASSWORD`: The password to access your database.
- `DB_NAME`: The name of your database.
- `DB_PORT`: The port of your database.
- `BI_PATH`: The path to the project folder.

Make sure to configure these variables correctly before running the ETLs.

## Technologies
- PostgreSQL
- PowerBI
- Pentaho Data Integration
