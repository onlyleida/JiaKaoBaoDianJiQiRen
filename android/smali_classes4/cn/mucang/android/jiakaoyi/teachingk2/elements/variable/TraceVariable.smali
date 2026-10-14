.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# instance fields
.field public enableStopCheck:Z

.field public left:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public range:I

.field public right:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

.field public time:I

.field public traces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->left:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->right:Ljava/util/List;

    const/16 v0, 0x19

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    const/16 v0, 0x1388

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    const/16 v0, 0x64

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;-><init>()V

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_2

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_1

    if-eq p2, v1, :cond_2

    :cond_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, p2, :cond_3

    :cond_2
    const/16 p1, 0x19

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x7d0

    .line 12
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    :goto_0
    return-void
.end method


# virtual methods
.method public needCreateStopTeachModel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->enableStopCheck:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
