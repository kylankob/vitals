pragma solidity ^0.8.0;

contract PatientFactory {

    event CreatePatientEvent(
        uint patientId, 
        string name, 
        string dob, 
        string sex
        );

    struct Patient {
        string name;
        string dob;
        string sex;
    }

    Patient[] public patients;

    mapping (uint => address) public patientToOwner;


    function CreatePatient(string memory _name, string memory _dob, string memory _sex) public {
        patients.push(Patient(_name, _dob, _sex));
        uint patientId = patients.length - 1;
        patientToOwner[patientId] = msg.sender;
        emit CreatePatientEvent(patientId, _name, _dob, _sex);
    }
}