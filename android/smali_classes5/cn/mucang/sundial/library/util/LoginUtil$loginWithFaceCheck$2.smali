.class public final Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/widget/DialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil;->loginWithFaceCheck(Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2",
        "Lcn/mucang/sundial/library/widget/DialogCallBack;",
        "",
        "index",
        "Lkotlin/v;",
        "onSelect",
        "(I)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $activity:Lcn/mucang/sundial/library/activity/BaseActivity;

.field final synthetic $authToken:Ljava/lang/String;

.field final synthetic $idCardNo:Ljava/lang/String;

.field final synthetic $personMode:I

.field final synthetic $xyToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$activity:Lcn/mucang/sundial/library/activity/BaseActivity;

    iput p2, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$personMode:I

    iput-object p3, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$idCardNo:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$authToken:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$xyToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$activity:Lcn/mucang/sundial/library/activity/BaseActivity;

    .line 2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$activity:Lcn/mucang/sundial/library/activity/BaseActivity;

    const-class v3, Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget v2, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$personMode:I

    const-string v3, "person_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    sget-object v2, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "check_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    sget-object v2, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v2

    const-string v3, "upload_event_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$idCardNo:Ljava/lang/String;

    const-string v3, "id_num"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v2, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$authToken:Ljava/lang/String;

    const-string v3, "auth_token"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "course_subject"

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;->$xyToken:Ljava/lang/String;

    const-string v2, "xy_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    const/4 p1, 0x3

    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
