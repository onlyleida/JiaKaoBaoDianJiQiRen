.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final desc:Ljava/lang/String;

.field public final errorCode:I

.field public final state:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;->state:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;->desc:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;->errorCode:I

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;->state:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;->desc:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;->errorCode:I

    return-void
.end method
