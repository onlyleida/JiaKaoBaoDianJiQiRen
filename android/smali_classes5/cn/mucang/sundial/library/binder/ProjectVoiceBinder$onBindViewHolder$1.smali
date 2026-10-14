.class final Lcn/mucang/sundial/library/binder/ProjectVoiceBinder$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/ProjectVoiceItem;)V
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
.field final synthetic $item:Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

.field final synthetic this$0:Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;Lcn/mucang/sundial/library/entity/ProjectVoiceItem;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;

    iput-object p2, p0, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder$onBindViewHolder$1;->$item:Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;->getLastClickTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p1, 0x320

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder$onBindViewHolder$1;->this$0:Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;->setLastClickTime(J)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder$onBindViewHolder$1;->$item:Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;->getVoiceTxt()Ljava/lang/String;

    move-result-object v0

    const-string p1, "{\u505c\u987f}"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u70b9\u51fb\u9879\u76ee\u8bed\u97f3\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder$onBindViewHolder$1;->$item:Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;->getVoiceTxt()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "{\u505c\u987f}"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
