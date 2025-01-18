# Sana Salud

## Description
A comprehensive data warehouse solution designed to optimize and analyze healthcare operations at SanaSalud Hospital. This project focuses on improving the management and analysis of key medical processes. The system integrates data from multiple sources to provide actionable insights across ten medical specialties, including cardiology, surgery, and others.

Our solution implements both OLTP (Online Transaction Processing) and OLAP (Online Analytical Processing) systems, featuring:
- Robust ETL pipelines for data integration and cleansing
- Interactive dashboards and reports built with PowerBI

This project was developed as part of the Business Intelligence course at Universidad Católica Andrés Bello, under the guidance of Professor Concettina Di Vasta. It represents a practical application of BI concepts in healthcare management.

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

<p align="center">
  <a href="https://www.joomla.org/" target="blank"><img src="https://upload.wikimedia.org/wikipedia/commons/c/cf/New_Power_BI_Logo.svg" width="200" height='150' alt="Joomla Logo" /></a>
  <a href="https://mariadb.org/" target="blank"><img src="https://logodix.com/logo/1960166.png" width="200" height='150' alt="MariaDB Logo" /></a>