namespace demo;

entity student{
    key std_id : UUID;
    std_name : String;
    std_adrs : String;
}

entity college{
    key c_id : UUID;
    c_name : String;
    c_adrs : String;
}