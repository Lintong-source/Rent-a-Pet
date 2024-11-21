import flatpickr from "flatpickr";

export const initFlatpickr = () => {
  flatpickr("#datepicker", {
    dateFormat: "Y-m-d",
  });
};
