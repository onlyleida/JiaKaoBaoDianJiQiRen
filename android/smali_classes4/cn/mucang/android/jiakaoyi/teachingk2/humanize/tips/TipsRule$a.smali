.class public final Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\u0007J\u0018\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule$Companion;",
        "",
        "()V",
        "getRule",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;",
        "summaryType",
        "",
        "getRuleByEvent",
        "eventCode",
        "getRuleByStep",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/UserSummaryType;",
        "step",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRecordEvent()Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method
