.class public Lcn/mucang/android/account/one_key_login/model/PhoneModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/BaseModel;


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/account/one_key_login/model/PhoneModel;->success:Z

    .line 3
    iput-object p2, p0, Lcn/mucang/android/account/one_key_login/model/PhoneModel;->phone:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/account/one_key_login/model/PhoneModel;->errorMsg:Ljava/lang/String;

    return-void
.end method
