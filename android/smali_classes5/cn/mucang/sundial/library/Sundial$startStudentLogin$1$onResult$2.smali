.class final Lcn/mucang/sundial/library/Sundial$startStudentLogin$1$onResult$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->onResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1$onResult$2;->this$0:Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/Sundial;->INSTANCE:Lcn/mucang/sundial/library/Sundial;

    iget-object v1, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1$onResult$2;->this$0:Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;

    iget-object v2, v1, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$context:Landroid/content/Context;

    iget-object v3, v1, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$idCardNo:Ljava/lang/String;

    iget-object v4, v1, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$authToken:Ljava/lang/String;

    iget-object v5, v1, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$xyToken:Ljava/lang/String;

    iget-boolean v6, v1, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$isK2:Z

    iget-object v7, v1, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcn/mucang/sundial/library/Sundial;->access$startStudentLoginActivity(Lcn/mucang/sundial/library/Sundial;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/sundial/library/SundialCallBack;)V

    return-void
.end method
