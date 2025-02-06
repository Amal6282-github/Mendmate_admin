class DummyWorkerDetails {
  final String name;
  final String category;
  final String dateOfJoined;
  final String view; // You can use this property if needed
  final String status;

  DummyWorkerDetails(
      {required this.name,
      required this.category,
      required this.dateOfJoined,
      required this.view,
      required this.status});
}

final List<DummyWorkerDetails> workerDetails = [
  DummyWorkerDetails(
      name: 'John Doe',
      category: 'Plumbing',
      dateOfJoined: '3/05/2025, 2:30 PM',
      view: 'view',
      status: 'Approved'),
  DummyWorkerDetails(
      name: 'Jane Smith',
      category: 'Electrical',
      dateOfJoined: '10/06/2024, 1:00 PM',
      view: 'view',
      status: 'Pending'),
  DummyWorkerDetails(
      name: 'Michael Johnson',
      category: 'Carpentry',
      dateOfJoined: '15/07/2023, 4:15 PM',
      view: 'view',
      status: 'Decline'),
  DummyWorkerDetails(
      name: 'Alice Brown',
      category: 'Plumbing',
      dateOfJoined: '12/12/2023, 9:30 AM',
      view: 'view',
      status: 'Blocked'),
  DummyWorkerDetails(
      name: 'Bob White',
      category: 'Electrical',
      dateOfJoined: '9/03/2024, 11:00 AM',
      view: 'view',
      status: 'Pending'),
  DummyWorkerDetails(
      name: 'Charlie Green',
      category: 'Carpentry',
      dateOfJoined: '22/07/2023, 3:45 PM',
      view: 'view',
      status: 'Approved'),
  DummyWorkerDetails(
      name: 'David Black',
      category: 'Plumbing',
      dateOfJoined: '14/08/2024, 5:00 PM',
      view: 'view',
      status: 'Approved'),
  DummyWorkerDetails(
      name: 'Eve Blue',
      category: 'Electrical',
      dateOfJoined: '7/02/2025, 12:30 PM',
      view: 'view',
      status: 'Approved'),
  DummyWorkerDetails(
      name: 'Frank Red',
      category: 'Carpentry',
      dateOfJoined: '19/11/2023, 2:00 PM',
      view: 'view',
      status: 'Pending'),
];
