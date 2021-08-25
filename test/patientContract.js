
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Patient Factory", () => {
    let PatientFactoryContract, patientFactoryContract;
    

    beforeEach(async () => {
        // console.log(accounts)
        // [owner] = await ethers.getSigners()
        PatientFactoryContract = await ethers.getContractFactory("PatientFactory");
        patientFactoryContract = await PatientFactoryContract.deploy();
    });

    it("emits a new Create Patient Event", async () => {
        const name = "Barney"
        const dob = "2017-02-01"
        const sex = "Male"
        await expect(patientFactoryContract.CreatePatient(name, dob, sex))
        .to
        .emit(patientFactoryContract, "CreatePatientEvent")
        .withArgs(0, name, dob, sex)
    });
})