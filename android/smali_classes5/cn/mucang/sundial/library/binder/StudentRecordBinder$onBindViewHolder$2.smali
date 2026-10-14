.class final Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/binder/StudentRecordBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
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
.field final synthetic $item:Lcn/mucang/sundial/android/db/entity/StudentInfo;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$2;->$item:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;

    iget-object v1, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$2;->$item:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    return-void
.end method
