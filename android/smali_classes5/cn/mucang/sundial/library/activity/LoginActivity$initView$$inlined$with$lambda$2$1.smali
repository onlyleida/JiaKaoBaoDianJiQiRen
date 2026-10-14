.class public final Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/util/ClickController$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2;->onClick(Landroid/view/View;)V
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005\u00b8\u0006\u0000"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/LoginActivity$initView$2$1$1",
        "Lcn/mucang/sundial/library/util/ClickController$ClickListener;",
        "Lkotlin/v;",
        "onClickCountFull",
        "()V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCountFull()V
    .locals 4

    const-string v0, "\u8df3\u6444\u50cf\u5934\u6d4b\u8bd5\u9875\u9762"

    .line 1
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity;

    const-class v1, Lcn/mucang/sundial/library/activity/CameTestActivity;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/sundial/library/util/KtxsKt;->safeStartActivity$default(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    return-void
.end method
