.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public carType:I

.field public languageCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;->languageCode:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;->carType:I

    return-void
.end method
