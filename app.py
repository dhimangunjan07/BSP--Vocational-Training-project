from flask import Flask, render_template
import mysql.connector
from collections import defaultdict

app = Flask(__name__)

# MySQL connection function
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",       # Change if not local
        user="root",            # Your MySQL username
        password="password", # Your MySQL password
        database="bsp"          # Your DB name
    )

@app.route("/bar_rod_mill")
def bar_rod_mill():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for Bar & Rod Mill (mill_id=4)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 4
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("bar_rod_mill.html", data=data_by_date, dates=sorted_dates)

@app.route("/iron_mine")
def iron_mine_group():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for BSP iron mine group (mill_id=1)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 1
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("iron_mine.html", data=data_by_date, dates=sorted_dates)

@app.route("/coke_oven")
def coke_oven():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for coke oven (mill_id=5)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 5
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("cokeoven.html", data=data_by_date, dates=sorted_dates)

@app.route("/blast_furnace")
def blast_furnace():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for blast_furnace (mill_id=2)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 2
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("blast_furnace.html", data=data_by_date, dates=sorted_dates)

@app.route("/universal_rail_mill")
def univerrsal_rail_mill():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for Universal Rail Mill (mill_id=3)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 3
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("Universal_rail_mill.html", data=data_by_date, dates=sorted_dates)

@app.route("/steel_smelting_shop_II")
def steel_smelting_shop_II():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for steel smelting shop 2 (mill_id=6)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 6
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("steel_smelting_shop_II.html", data=data_by_date, dates=sorted_dates)

@app.route("/rail_dispatches")
def rail_dispatches():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for rail dispatches (mill_id=7)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 7
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("rail_dispatches.html", data=data_by_date, dates=sorted_dates)

@app.route("/plate_mill")
def plate_mill():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for plate mill (mill_id=8)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 8
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("plate_mill.html", data=data_by_date, dates=sorted_dates)

@app.route("/sinter_plant_II")
def sinter_plant_II():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for sinter plates 2 (mill_id=9)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 9
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("sinter_plant_II.html", data=data_by_date, dates=sorted_dates)

@app.route("/sinter_plant_III")
def sinter_plant_III():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for sinter plates 3 (mill_id=10)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 10
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("sinter_plant_III.html", data=data_by_date, dates=sorted_dates)

@app.route("/steel_melting_III")
def steel_melting_III():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for steel melting 3 (mill_id=11)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 11
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("steel_melting_III.html", data=data_by_date, dates=sorted_dates)

@app.route("/rail_mill")
def rail_mill():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for rail mill (mill_id=12)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 12
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("rail_mill.html", data=data_by_date, dates=sorted_dates)

@app.route("/merchant_mill")
def merchant_mill():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for merchant mill (mill_id=13)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 12
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("merchant_mill.html", data=data_by_date, dates=sorted_dates)

@app.route("/wire_rod_mill")
def wire_rod_mill():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data for wire rod mill (mill_id=14)
    cursor.execute("""
        SELECT prod_date, shift, output_tons, target_tons, efficiency_percent, downtime_minutes, remarks
        FROM production
        WHERE mill_id = 14
        ORDER BY prod_date ASC, shift ASC
    """)
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    # Group by date → shift
    data_by_date = defaultdict(lambda: {'A': {}, 'B': {}, 'C': {}})
    for row in rows:
        data_by_date[row['prod_date']][row['shift']] = row

    sorted_dates = sorted(data_by_date.keys())

    return render_template("wire_rod_mill.html", data=data_by_date, dates=sorted_dates)

@app.route('/saleable_steel_dispatch')
def saleable_steel_dispatch():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch data
    cursor.execute(
        "SELECT product_name, till_date, stock_open_jan2025, stock_aug1_2025, stock_on_date FROM dispatch_stock"
    )
    rows = cursor.fetchall()

    cursor.close()
    conn.close()

    return render_template('saleable_steel_dispatch.html', data=rows)

@app.route('/show_plan')
def show_plan():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM plan ORDER BY sl_no")
    rows = cursor.fetchall()
    cursor.close()
    conn.close()
    return render_template('plan.html', data=rows)

@app.route("/aboutus.html")
def about():
    return render_template("aboutus.html")

@app.route("/contactus.html")
def contact():
    return render_template("contactus.html")

@app.route("/demo.html")
def demo():
    return render_template("demo.html")

@app.route("/card1.html")
def card1():
    return render_template("card1.html")

@app.route("/")
def home():
    return render_template("card1.html")

if __name__ == "__main__":
    app.run(debug=True)