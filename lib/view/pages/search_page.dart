import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mechine_testt/view/widgets/button_container.dart';

class SearchPage extends HookWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _selectDate(
        BuildContext context, ValueNotifier<DateTime?> selectedDate) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate.value ?? DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030),
      );
      if (picked != null && picked != selectedDate.value) {
        selectedDate.value = picked;
      }
    }

    Future<void> _selectTime(
        BuildContext context, ValueNotifier<TimeOfDay?> selectedTime) async {
      final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: selectedTime.value ?? TimeOfDay.now(),
      );
      if (picked != null && picked != selectedTime.value) {
        selectedTime.value = picked;
      }
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final fromDate = useState<DateTime?>(null);
    final fromTime = useState<TimeOfDay?>(null);
    final toDate = useState<DateTime?>(null);
    final toTime = useState<TimeOfDay?>(null);

    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Container(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.05,
                  decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                      Text(
                        "+91 1234567890",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Text(
              "Search your bike",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Text(
              "FROM",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: fromDate.value != null
                          ? '${fromDate.value!.day} ${fromDate.value!.month}, ${fromDate.value!.year}'
                          : 'Select Date',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () => _selectDate(context, fromDate),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                GestureDetector(
                  onTap: () => _selectTime(context, fromTime),
                  child: Container(
                    height: screenWidth * 0.13,
                    width: screenWidth * 0.25,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        fromTime.value != null
                            ? fromTime.value!.format(context)
                            : 'Select Time',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const Text(
              "TO",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: toDate.value != null
                          ? '${toDate.value!.day} ${fromDate.value!.month}, ${fromDate.value!.year}'
                          : 'Select Date',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.calendar_today),
                        onPressed: () => _selectDate(context, toDate),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                GestureDetector(
                  onTap: () => _selectTime(context, toTime),
                  child: Container(
                    height: screenWidth * 0.13,
                    width: screenWidth * 0.25,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        toTime.value != null
                            ? toTime.value!.format(context)
                            : 'Select Time',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            ButtonContainer(txt: "Search", screenHeight: screenHeight)
          ],
        ),
      )),
    );
  }
}
