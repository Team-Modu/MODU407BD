#include "Driver_ui.h"

///////////////////// VARIABLES ////////////////////
lv_obj_t * Screen1_copy;
lv_obj_t * Roller2;
lv_obj_t * Dropdown1;
lv_obj_t * Slider2;
lv_obj_t * Screen2;
lv_obj_t * Spinner1;
lv_obj_t * Label2;
lv_obj_t * Object2;

///////////////////// IMAGES ////////////////////

///////////////////// FUNCTIONS ////////////////////
#define BAR_PROPERTY_VALUE 0
#define BAR_PROPERTY_VALUE_WITH_ANIM 1

void SetBarProperty(lv_obj_t * target, int id, int val)
{
    if(id == BAR_PROPERTY_VALUE_WITH_ANIM) lv_bar_set_value(target, val, LV_ANIM_ON);
    if(id == BAR_PROPERTY_VALUE) lv_bar_set_value(target, val, LV_ANIM_OFF);
}

#define BASIC_PROPERTY_POSITION_X 0
#define BASIC_PROPERTY_POSITION_Y 1
#define BASIC_PROPERTY_WIDTH 2
#define BASIC_PROPERTY_HEIGHT 3
#define BASIC_PROPERTY_CLICKABLE 4
#define BASIC_PROPERTY_HIDDEN 5
#define BASIC_PROPERTY_DRAGABLE 6
#define BASIC_PROPERTY_DISABLED 7

void SetBasicProperty(lv_obj_t * target, int id, int val)
{
    if(id == BASIC_PROPERTY_POSITION_X) lv_obj_set_x(target, val);
    if(id == BASIC_PROPERTY_POSITION_Y) lv_obj_set_y(target, val);
    if(id == BASIC_PROPERTY_WIDTH) lv_obj_set_width(target, val);
    if(id == BASIC_PROPERTY_HEIGHT) lv_obj_set_height(target, val);
}

void SetBasicPropertyB(lv_obj_t * target, int id, bool val)
{
    if(id == BASIC_PROPERTY_CLICKABLE) lv_obj_set_click(target, val);
    if(id == BASIC_PROPERTY_HIDDEN) lv_obj_set_hidden(target, val);
    if(id == BASIC_PROPERTY_DRAGABLE) lv_obj_set_drag(target, val);
    if(id == BASIC_PROPERTY_DISABLED) {
        if(val) lv_obj_add_state(target, LV_STATE_DISABLED);
        else lv_obj_clear_state(target, LV_STATE_DISABLED);
    }
}

#define BUTTON_PROPERTY_TOGGLE 0
#define BUTTON_PROPERTY_CHECKED 1

void SetButtonProperty(lv_obj_t * target, int id, bool val)
{
    if(id == BUTTON_PROPERTY_TOGGLE) lv_btn_toggle(target);
}

#define DROPDOWN_PROPERTY_SELECTED 0

void SetDropdownProperty(lv_obj_t * target, int id, int val)
{
    if(id == DROPDOWN_PROPERTY_SELECTED) lv_dropdown_set_selected(target, val);
}

#define IMAGE_PROPERTY_IMAGE 0

void SetImageProperty(lv_obj_t * target, int id, uint8_t * val)
{
    if(id == IMAGE_PROPERTY_IMAGE) lv_img_set_src(target, val);
}

#define LABEL_PROPERTY_TEXT 0

void SetLabelProperty(lv_obj_t * target, int id, char * val)
{
    if(id == LABEL_PROPERTY_TEXT) lv_label_set_text(target, val);
}

#define ROLLER_PROPERTY_SELECTED 0
#define ROLLER_PROPERTY_SELECTED_WITH_ANIM 1

void SetRollerProperty(lv_obj_t * target, int id, int val)
{
    if(id == ROLLER_PROPERTY_SELECTED_WITH_ANIM) lv_roller_set_selected(target, val, LV_ANIM_ON);
    if(id == ROLLER_PROPERTY_SELECTED) lv_roller_set_selected(target, val, LV_ANIM_OFF);
}

#define SLIDER_PROPERTY_VALUE 0
#define SLIDER_PROPERTY_VALUE_WITH_ANIM 1

void SetSliderProperty(lv_obj_t * target, int id, int val)
{
    if(id == SLIDER_PROPERTY_VALUE_WITH_ANIM) lv_slider_set_value(target, val, LV_ANIM_ON);
    if(id == SLIDER_PROPERTY_VALUE) lv_slider_set_value(target, val, LV_ANIM_OFF);
}

void ChangeScreen(lv_obj_t * target, int fademode, int spd, int delay)
{
    lv_scr_load_anim(target, fademode, spd, delay, false);
}

///////////////////// ANIMATIONS ////////////////////

///////////////////// FUNCTIONS2 ////////////////////
static void Roller2_eventhandler(lv_obj_t * obj, lv_event_t event)
{
}
static void Dropdown1_eventhandler(lv_obj_t * obj, lv_event_t event)
{
}
static void Slider2_eventhandler(lv_obj_t * obj, lv_event_t event)
{
}
static void Object2_eventhandler(lv_obj_t * obj, lv_event_t event)
{
}

///////////////////// SCREENS ////////////////////
void BuildPages(void)
{
    Screen2 = lv_obj_create(NULL);

    Label2 = lv_label_create(Screen2);
    lv_label_set_align(Label2);
    lv_label_set_text(Label2, "Text");
    lv_obj_set_size(Label2, 29, 16);  // force: -75
    lv_obj_set_click(Label2, false);
    lv_obj_set_hidden(Label2, false);
    lv_obj_clear_state(Label2, LV_STATE_DISABLED);
    lv_obj_set_drag(Label2, false);

    lv_obj_align(Label2, Screen2, -75, -65); // force: 29

    Object2 = lv_obj_create(Screen2);
    lv_obj_set_click(Object2, true);
    lv_obj_set_hidden(Object2, false);
    lv_obj_clear_state(Object2, LV_STATE_DISABLED);
    lv_obj_set_size(Object2, 100, 50);  // force: 0
    lv_obj_align(Object2, Screen2, 0, 0); // force: 100
    lv_obj_set_drag(Object2, false);
    lv_obj_set_event_cb(Object2, Object2_eventhandler);

}

