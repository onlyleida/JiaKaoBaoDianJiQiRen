.class final Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;)V
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
.field final synthetic $item:Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

.field final synthetic this$0:Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;

    iput-object p2, p0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;->$item:Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;->getLastClickTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p1, 0x3e8

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;->setLastClickTime(J)V

    .line 3
    sget-object p1, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;

    iget-object v1, p0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;->$item:Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u70b9\u51fb\u8003\u8bd5\u8bed\u97f3\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;->$item:Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
