.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tR\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$Companion;",
        "",
        "()V",
        "caches",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;",
        "[Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;",
        "getTutorialLevel",
        "code",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->access$getCaches$cp()[Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->None:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    return-object p1
.end method
