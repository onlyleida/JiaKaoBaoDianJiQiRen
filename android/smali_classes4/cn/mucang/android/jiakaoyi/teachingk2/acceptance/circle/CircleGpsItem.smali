.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0004J\u000e\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020&J\u0006\u0010+\u001a\u00020,R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R:\u0010\u000c\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u0001`\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R:\u0010\u0014\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u0001`\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0006\"\u0004\u0008!\u0010\u0008R\u001a\u0010\"\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0019\"\u0004\u0008$\u0010\u001b\u00a8\u0006-"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;",
        "Ljava/io/Serializable;",
        "()V",
        "boundaryKey",
        "",
        "getBoundaryKey",
        "()Ljava/lang/String;",
        "setBoundaryKey",
        "(Ljava/lang/String;)V",
        "boundaryName",
        "getBoundaryName",
        "setBoundaryName",
        "gpsMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "getGpsMap",
        "()Ljava/util/HashMap;",
        "setGpsMap",
        "(Ljava/util/HashMap;)V",
        "headingMap",
        "getHeadingMap",
        "setHeadingMap",
        "satelliteLessCount",
        "getSatelliteLessCount",
        "()I",
        "setSatelliteLessCount",
        "(I)V",
        "stepId",
        "getStepId",
        "setStepId",
        "stepName",
        "getStepName",
        "setStepName",
        "subStep",
        "getSubStep",
        "setSubStep",
        "handleGps",
        "",
        "gpsType",
        "handleHeading",
        "headingType",
        "increaseSatellite",
        "matchFullStep",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private boundaryKey:Ljava/lang/String;

.field private boundaryName:Ljava/lang/String;

.field private gpsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private headingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private satelliteLessCount:I

.field private stepId:I

.field private stepName:Ljava/lang/String;

.field private subStep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->subStep:I

    return-void
.end method


# virtual methods
.method public final getBoundaryKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->boundaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getBoundaryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->boundaryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGpsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->gpsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getHeadingMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->headingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getSatelliteLessCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->satelliteLessCount:I

    return v0
.end method

.method public final getStepId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->stepId:I

    return v0
.end method

.method public final getStepName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->stepName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->subStep:I

    return v0
.end method

.method public final handleGps(Ljava/lang/String;)V
    .locals 3

    const-string v0, "gpsType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->gpsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->gpsMap:Ljava/util/HashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->gpsMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->gpsMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->gpsMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->gpsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final handleHeading(Ljava/lang/String;)V
    .locals 3

    const-string v0, "headingType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->headingMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->headingMap:Ljava/util/HashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->headingMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->headingMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->headingMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->headingMap:Ljava/util/HashMap;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final increaseSatellite()V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->satelliteLessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->satelliteLessCount:I

    return-void
.end method

.method public final matchFullStep()Z
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->stepId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->subStep:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 3
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_3

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->subStep:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 5
    :cond_3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->subStep:I

    if-lt v0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public final setBoundaryKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->boundaryKey:Ljava/lang/String;

    return-void
.end method

.method public final setBoundaryName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->boundaryName:Ljava/lang/String;

    return-void
.end method

.method public final setGpsMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->gpsMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setHeadingMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->headingMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setSatelliteLessCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->satelliteLessCount:I

    return-void
.end method

.method public final setStepId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->stepId:I

    return-void
.end method

.method public final setStepName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->stepName:Ljava/lang/String;

    return-void
.end method

.method public final setSubStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleGpsItem;->subStep:I

    return-void
.end method
