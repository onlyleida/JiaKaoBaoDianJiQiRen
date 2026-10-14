.class final Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->handleMessage(Landroid/os/Message;)Z
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "cn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$1$1",
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
.field final synthetic $idCard:Ljava/lang/String;

.field final synthetic $raw$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1;->$idCard:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;

    iput-object p3, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1;->$raw$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1;->$idCard:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$onGetIdCard(Lcn/mucang/sundial/library/activity/LoginStudentActivity;Ljava/lang/String;)V

    return-void
.end method
