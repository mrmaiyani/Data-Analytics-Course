import tkinter as tk
from tkinter import filedialog, messagebox
from pypdf import PdfWriter
import os

def select_pdfs():
    files = filedialog.askopenfilenames(
        title="Select PDF files to merge",
        filetypes=[("PDF files", "*.pdf")]
    )

    if files:
        pdf_list.delete(0, tk.END)
        for file in files:
            pdf_list.insert(tk.END, file)

def merge_pdfs():
    pdfs = list(pdf_list.get(0, tk.END))
    if not pdfs:
        messagebox.showerror("Error", "No PDF files selected!")
        return

    merger = PdfWriter()

    try:
        for pdf in pdfs:
            merger.append(pdf)

        output_file = filedialog.asksaveasfilename(
            defaultextension=".pdf",
            filetypes=[("PDF files", "*.pdf")],
            title="Save merged PDF as"
        )

        if output_file:
            merger.write(output_file)
            merger.close()

            messagebox.showinfo(
                "Success",
                f"PDFs merged successfully into {os.path.basename(output_file)}"
            )

    except Exception as e:
        messagebox.showerror("Error", f"An error occurred: {str(e)}")

root = tk.Tk()
root.title("PDF Merger")
root.geometry("400x300")
select_button = tk.Button(root, text="Select PDF Files", command=select_pdfs)
select_button.pack(pady=10)
pdf_list = tk.Listbox(root, selectmode=tk.MULTIPLE, width=50, height=10)
pdf_list.pack(pady=10)
merge_button = tk.Button(root, text="Merge PDFs", command=merge_pdfs)
merge_button.pack(pady=10)

root.mainloop()