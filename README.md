# Project Setup with uv, duckdb, and dbt

This guide will help you set up and run a project using `uv`, `duckdb`, and `dbt`.

## Prerequisites

- Python 3.7 or higher
- `uv` package
- `duckdb` package
- `dbt` package

## Installation

1. Create a virtual environment:
    ```sh
    python -m venv env
    ```

2. Activate the virtual environment:
    - On Windows:
        ```sh
        .\env\Scripts\activate
        ```
    - On macOS and Linux:
        ```sh
        source env/bin/activate
        ```

3. Install the required packages:
    ```sh
    pip install uv duckdb dbt
    ```

## Setting Up the Project

1. Initialize a new dbt project:
    ```sh
    dbt init my_project
    cd my_project
    ```

2. Configure the `profiles.yml` file to use `duckdb`:
    ```yaml
    my_project:
      target: dev
      outputs:
        dev:
          type: duckdb
          path: path/to/your/duckdb/database/file
    ```

## Running the Project

1. Start the `uv` server:
    ```sh
    uvicorn main:app --reload
    ```

2. Run dbt commands:
    ```sh
    dbt run
    dbt test
    ```

## Additional Resources

- [uv Documentation](https://www.uvicorn.org/)
- [duckdb Documentation](https://duckdb.org/docs/)
- [dbt Documentation](https://docs.getdbt.com/)
