import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  static values = {
    dates: Array
  }

  connect() {
    // const isStartDateInput = this.element.id === "rental_start_date"

    flatpickr(this.element, {
      // dateFormat: 'l, F j, Y',
      minDate: "today",
      disable: this.datesValue
    });
  }
}
