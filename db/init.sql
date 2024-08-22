CREATE TABLE authors (
  author_id BIGINT NOT NULL AUTO_INCREMENT,
  author_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (author_id),
  CONSTRAINT UC_Author UNIQUE (author_name,last_name)
);

CREATE TABLE documents (
  document_id BIGINT NOT NULL AUTO_INCREMENT,
  title VARCHAR(50), 
  body TEXT, 
  reference VARCHAR(250),
  PRIMARY KEY (document_id) 
);

CREATE TABLE documents_authors (
  document_id BIGINT NOT NULL,
  author_id BIGINT NOT NULL,
  CONSTRAINT fk_documents FOREIGN KEY(document_id) REFERENCES documents(document_id),
  CONSTRAINT fk_authors FOREIGN KEY(author_id) REFERENCES authors(author_id),
  PRIMARY KEY (document_id , author_id)
)