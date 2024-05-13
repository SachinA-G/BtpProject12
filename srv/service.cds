using demo as sample from  '../db/schema';

service MyService {
    @odata.draft.enabled
    entity student as projection on sample.student;
    @odata.draft.enabled
    entity college as projection on  sample.college;
}
