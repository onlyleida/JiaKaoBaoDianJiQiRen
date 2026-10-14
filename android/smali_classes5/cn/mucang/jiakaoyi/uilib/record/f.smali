.class public final Lcn/mucang/jiakaoyi/uilib/record/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "convert",
        "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "uilib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcn/mucang/android/jiakaoyi/engine/model/a;)Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;-><init>()V

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->setCreateTime(J)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->setDeductDesc(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->setStepId(I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->setDeductId(I)V

    .line 6
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;->setDeductScore(I)V

    return-object v0
.end method
