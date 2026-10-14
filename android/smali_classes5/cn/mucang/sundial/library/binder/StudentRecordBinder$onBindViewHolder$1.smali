.class final Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$1;
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

.field final synthetic this$0:Lcn/mucang/sundial/library/binder/StudentRecordBinder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/binder/StudentRecordBinder;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/StudentRecordBinder;

    iput-object p2, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$1;->$item:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/StudentRecordBinder;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/binder/StudentRecordBinder;->getLastClickTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p1, 0x320

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/StudentRecordBinder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/sundial/library/binder/StudentRecordBinder;->setLastClickTime(J)V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->isLocationValid()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    const-string v0, "\u83b7\u53d6\u5b9a\u4f4d\u4fe1\u606f\u5931\u8d25"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p1, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    sget-object p1, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/IdCardEvent;

    iget-object v1, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$1;->$item:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/eventbus/event/IdCardEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    return-void
.end method
