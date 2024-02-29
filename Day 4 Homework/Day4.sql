CREATE TABLE Salesperson (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Car (
    SerialNumber VARCHAR(50) PRIMARY KEY,
    SalespersonID INT,
    CustomerID INT,
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(ID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(ID)
);

CREATE TABLE Customer (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Invoice (
    ID INT PRIMARY KEY,
    CarSerialNumber VARCHAR(50),
    SalespersonID INT,
    CustomerID INT,
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(SerialNumber),
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(ID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(ID)
);

CREATE TABLE ServiceTicket (
    ID INT PRIMARY KEY,
    CarSerialNumber VARCHAR(50),
    CustomerID INT,
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(SerialNumber),
    FOREIGN KEY (CustomerID) REFERENCES Customer(ID)
);

CREATE TABLE Mechanic (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Part (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Car_Mechanic (
    CarSerialNumber VARCHAR(50),
    MechanicID INT,
    PRIMARY KEY (CarSerialNumber, MechanicID),
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(SerialNumber),
    FOREIGN KEY (MechanicID) REFERENCES Mechanic(ID)
);

CREATE TABLE Car_Part (
    CarSerialNumber VARCHAR(50),
    PartID INT,
    PRIMARY KEY (CarSerialNumber, PartID),
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(SerialNumber),
    FOREIGN KEY (PartID) REFERENCES Part(ID)
);