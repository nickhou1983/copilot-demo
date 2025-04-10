erDiagram
    PRODUCTS {
        INTEGER id PK
        TEXT name
        REAL price
    }
    USERS {
        INTEGER id PK
        TEXT username
        TEXT password
        TEXT email
        BOOLEAN is_admin
        TIMESTAMP created_at
    }
    BOOKS {
        INTEGER id PK
        TEXT title
        TEXT author
        TEXT publisher
        TEXT isbn
        INTEGER publication_year
        TEXT category
        TEXT description
        INTEGER available_copies
        INTEGER total_copies
        TIMESTAMP created_at
    }
    BORROWINGS {
        INTEGER id PK
        INTEGER user_id FK
        INTEGER book_id FK
        TIMESTAMP borrow_date
        TIMESTAMP due_date
        TIMESTAMP return_date
        TEXT status
    }
    USERS ||--o{ BORROWINGS : "has"
    BOOKS ||--o{ BORROWINGS : "includes"