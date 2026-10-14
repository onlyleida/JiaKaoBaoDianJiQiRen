.class public Lcn/mucang/android/jiakaoyi/teachingk2/form/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/AutoTeachModel;

    return-object p0

    .line 2
    :cond_1
    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    return-object p0

    .line 3
    :cond_2
    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    return-object p0

    .line 4
    :cond_3
    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    return-object p0

    .line 5
    :cond_4
    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    return-object p0

    .line 6
    :cond_5
    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/TextTipModel;

    return-object p0
.end method
