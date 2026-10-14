.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$Companion;",
        "",
        "()V",
        "getModule",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        "type",
        "",
        "TeachingK2_release"
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

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->K2Teach:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->Circle:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->Precision:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    return-object p1
.end method
