//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.15;

interface IAssignment {
    function submitAssginment(uint256 _student_id) external;
}

contract S63070503409 {
    address internal MAIN_CONTRACT = 0xAFd03C5791b1aAfeC1D04Ea503EF71F8F9f7e739;
    uint256 internal student_id = 63070503409;
    string internal name = "Seiya";

    IAssignment internal assignmentContract = IAssignment(MAIN_CONTRACT);

    function getStudentId() public view returns (uint256) {
        return student_id;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function submitAssignment() public {
        assignmentContract.submitAssginment(student_id);
    }
}