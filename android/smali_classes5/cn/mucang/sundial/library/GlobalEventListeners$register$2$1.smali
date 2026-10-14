.class public final Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/widget/DialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/GlobalEventListeners$register$2;->onChanged(Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;)V
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
        "cn/mucang/sundial/library/GlobalEventListeners$register$2$1",
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
.field final synthetic $it:Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;->$it:Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 0

    .line 1
    new-instance p1, Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1$onSelect$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1$onSelect$1;-><init>(Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;)V

    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method
