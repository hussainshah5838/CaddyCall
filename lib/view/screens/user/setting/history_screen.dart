import 'package:caddy_call/config/constants/app_fonts.dart';
import 'package:caddy_call/config/constants/app_sizes.dart';
import 'package:caddy_call/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../config/constants/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../custom/common_image_view_widget.dart';
import '../../../custom/custom_appbar.dart';
import 'package:fl_chart/fl_chart.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar3(
        title: "Stats & History",
        actions: [
          CommonImageView(svgPath: Assets.svgNotification, height: 32),
          SizedBox(width: 10),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Your Golf Journey",
                size: 24,
                weight: FontWeight.w600,
                color: kPrimaryColor,
                fontFamily: AppFonts.playFair,
              ),
              SizedBox(height: 5,),
              MyText(
                text: "Track your progress and celebrate your milestones.",
                size: 14,
                weight: FontWeight.w500,
                color: kText2Color,
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 202,
                      clipBehavior: Clip.antiAlias,
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: kQuaternaryColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFE3E3E3),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CommonImageView(imagePath: Assets.imagesBr,height: 50,),
                              SizedBox(width: 8,),
                              MyText(
                                text: "Best Round",
                                size: 14,
                                weight: FontWeight.w500,
                                color: kText2Color,
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          MyText(
                            text: "68",
                            size: 23,
                            weight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10,),
                          MyText(
                            text: "Par-4",
                            size: 14,
                            weight: FontWeight.w500,
                            color: kText2Color,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 202,
                      clipBehavior: Clip.antiAlias,
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: kQuaternaryColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFE3E3E3),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CommonImageView(imagePath: Assets.imagesAs,height: 50,),
                              SizedBox(width: 8,),
                              Expanded(
                                child: MyText(
                                  text: "Average Score",
                                  size: 14,
                                  weight: FontWeight.w500,
                                  color: kText2Color,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          MyText(
                            text: "75.2",
                            size: 23,
                            weight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10,),
                          MyText(
                            text: "Par Round",
                            size: 14,
                            weight: FontWeight.w500,
                            color: kText2Color,
                          ),
                          SizedBox(height: 18,),
                          Row(
                            children: [
                              CommonImageView(svgPath: Assets.svgMdiArrowUp,),
                              MyText(
                                text: "Imported by 1.5",
                                size: 14,
                                weight: FontWeight.w600,
                                color: Color(0xFF5EC169),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: kQuaternaryColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0xFFE3E3E3),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    CommonImageView(imagePath: Assets.imagesBr,height: 47,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: "Total Rounds",
                            size: 14,
                            weight: FontWeight.w600,
                            color: kText2Color,
                          ),
                          SizedBox(height: 8,),
                          MyText(
                            text: "Rounds Played",
                            size: 14,
                            weight: FontWeight.w600,
                            color: kBlackColor,
                          ),
                        ],
                      ),
                    ),
                    MyText(
                      text: "112",
                      size: 23,
                      weight: FontWeight.w700,
                      color: kBlackColor,
                      fontFamily: AppFonts.inter,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              MyText(
                text: "Performance trends",
                size: 24,
                weight: FontWeight.w600,
                color: kPrimaryColor,
                fontFamily: AppFonts.playFair,
              ),
              SizedBox(height: 20,),
              AreaChartWidget(),
              SizedBox(height: 20,),
              MyText(
                text: "Birdies & Pars Per Round",
                size: 24,
                weight: FontWeight.w600,
                color: kPrimaryColor,
                fontFamily: AppFonts.playFair,
              ),
              SizedBox(height: 20,),
              BarChartWidget(),
              SizedBox(height: 20,),
              MyText(
                text: "Recent Rounds",
                size: 24,
                weight: FontWeight.w600,
                color: kPrimaryColor,
                fontFamily: AppFonts.playFair,
              ),
              SizedBox(height: 10,),
              buildScoreCard(
                date: "Oct 26 2023",
                score: "72",
                clubName: "Springfield Golf Club",
                eValue: "E",
                eColor: Colors.black, // change color dynamically
              ),
              const SizedBox(height: 12),
              buildScoreCard(
                date: "Oct 26 2023",
                score: "72",
                clubName: "Springfield Golf Club",
                eValue: "-2",
                eColor: Colors.green, // change color dynamically
              ),
              const SizedBox(height: 12),
              buildScoreCard(
                date: "Oct 26 2023",
                score: "72",
                clubName: "Springfield Golf Club",
                eValue: "+3",
                eColor: Colors.red, // change color dynamically
              ),
              const SizedBox(height: 12),
              buildScoreCard(
                date: "Oct 26 2023",
                score: "72",
                clubName: "Ocean View Golf",
                eValue: "-4",
                eColor: Colors.green, // change color dynamically
              ),
              const SizedBox(height: 12),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildScoreCard({
    required String date,
    required String score,
    required String clubName,
    required String eValue,
    required Color eColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
      decoration: BoxDecoration(
        color: kQuaternaryColor,
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: date,
                size: 14,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              MyText(
                text: score,
                size: 20,
                weight: FontWeight.w700,
                color: kBlackColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: clubName,
                size: 14,
                weight: FontWeight.w500,
                color: kText2Color,
              ),
              MyText(
                text: eValue,
                size: 16,
                weight: FontWeight.w700,
                color: eColor, // dynamic color
              ),
            ],
          ),
        ],
      ),
    );
  }

}




class AreaChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      //padding: EdgeInsets.all(20),
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        primaryXAxis: CategoryAxis(
          majorGridLines: MajorGridLines(width: 0), // Remove grid lines
          axisLine: AxisLine(width: 0),
          majorTickLines: MajorTickLines(size: 0),
          labelStyle: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 12,
          ),
        ),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: 40,
          interval: 10,
          majorGridLines: MajorGridLines(
            width: 1,
            color: Colors.grey.shade400,
            dashArray: <double>[5, 5], // Dotted line
          ),
          axisLine: AxisLine(width: 0),
          majorTickLines: MajorTickLines(size: 0),
          labelStyle: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 12,
          ),
        ),
        series: <CartesianSeries>[
          AreaSeries<ChartData, String>(
            dataSource: getChartData(),
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            gradient: LinearGradient(
              colors: [
                Color(0xFF66C2A5), // Top color (teal/green)
                Color(0xFF66C2A5).withOpacity(0.3), // Bottom color (transparent teal)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderColor: Color(0xFF4A9B8E),
            borderWidth: 2,
          ),
        ],
      ),
    );
  }

  List<ChartData> getChartData() {
    return [
      ChartData('Round 1', 34),
      ChartData('Round 2', 32),
      ChartData('Round 3', 30),
      ChartData('Round 4', 36),
      ChartData('Round 5', 29),
    ];
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}







class BarChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 40,
          minY: 0,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: 10,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.grey.shade400,
                strokeWidth: 1,
                dashArray: [5, 5], // Dotted line
              );
            },
          ),
          titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: getBottomTitles,
                reservedSize: 30,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: getLeftTitles,
                reservedSize: 40,
                interval: 10,
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          barGroups: getBarGroups(),
          barTouchData: BarTouchData(enabled: false),
        ),
      ),
    );
  }

  Widget getBottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.normal,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'R1';
        break;
      case 1:
        text = 'R2';
        break;
      case 2:
        text = 'R3';
        break;
      case 3:
        text = 'R4';
        break;
      case 4:
        text = 'R5';
        break;
      case 5:
        text = 'R6';
        break;
      case 6:
        text = 'R7';
        break;
      case 7:
        text = 'R8';
        break;
      case 8:
        text = 'R9';
        break;
      case 9:
        text = 'R10';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      meta: meta,
      child: Text(text, style: style),
    );
  }

  Widget getLeftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.normal,
      fontSize: 12,
    );
    return SideTitleWidget(
      meta: meta,
      child: Text('${value.toInt()}', style: style),
    );
  }

  List<BarChartGroupData> getBarGroups() {
    return [
      BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 31, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 24, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 15, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 18, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 21, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 5, barRods: [BarChartRodData(toY: 27, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 6, barRods: [BarChartRodData(toY: 08, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 7, barRods: [BarChartRodData(toY: 15, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 8, barRods: [BarChartRodData(toY: 18, color: kPrimaryColor, width: 16)]),
      BarChartGroupData(x: 9, barRods: [BarChartRodData(toY: 09, color: kPrimaryColor, width: 16)]),
    ];
  }
}