# slides

[editable slides](https://gamma.app/docs/Calibra-Revolutionizing-Calibration-qcghjofjhh9alrm)

---

## pitch deck

[pdf](./Calibra-Revolutionizing-Calibration.pdf)

[deck](./deck.md)

[TAM SAM SOM](./TAM-SAM-SOM.md)

[what is TAM SAM SOM?](./TSS.md)

## actor flow

```mermaid
flowchart TD
 subgraph s1["Soulbound NFT"]
        C["Connect Wallet"]
        I["Connect Wallet"]
        N["Connect Wallet"]
  end
    A["Start"] --> B{"User Type"}
    B -- Auditor --> C
    C --> D["Verify Accreditation Credentials"]
    D --> E["Submit NMI/ISO Certification"]
    E --> F["Pay Verification Fee"]
    F --> G["Get Verified NFT Badge"]
    G --> H["Access Auditor Dashboard"]
    B -- Calibration Lab --> I
    I --> J["Upload Lab Accreditation"]
    J --> K["Stake CAL Tokens for Reputation"]
    K --> L["Receive Lab NFT ID"]
    L --> M["Access Lab Portal"]
    B -- Contractor/Hospital --> N
    N --> O["Submit Business License"]
    O --> P["Verify Domain Email"]
    P --> Q["Get Enterprise NFT"]
    Q --> R["Access Compliance Dashboard"]

    style A fill:#4CAF50,stroke:#388E3C
    style B fill:#FFC107,stroke:#FFA000
```

## live website

[demo](https://calibra-client.vercel.app/)
