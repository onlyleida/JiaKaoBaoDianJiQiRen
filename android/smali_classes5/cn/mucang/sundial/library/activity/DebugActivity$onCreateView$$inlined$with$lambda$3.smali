.class final Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/DebugActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onLongClick",
        "(Landroid/view/View;)Z",
        "cn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$5",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/DebugActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/activity/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    const-string p1, "\u8df3\u8f6c\u5f69\u86cb\u4e8c\u9875\u9762"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/activity/DebugActivity;

    const-class v0, Lcn/mucang/sundial/library/activity/DebugActivity2;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcn/mucang/sundial/library/util/KtxsKt;->safeStartActivity$default(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
