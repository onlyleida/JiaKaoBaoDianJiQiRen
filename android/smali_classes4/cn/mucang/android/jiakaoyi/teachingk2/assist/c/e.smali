.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;
.super Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/ErrorEventInterceptor;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/BaseErrorHandler;",
        "()V",
        "TAG",
        "",
        "intercept",
        "",
        "event",
        "",
        "interceptTransform",
        "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;",
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


# static fields
.field public static final b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;-><init>()V

    return-void
.end method

.method public static final e(I)Z
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq p0, v1, :cond_3

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_service_disconnect:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(R.string.teachbase_service_disconnect)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->c(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3
    :cond_2
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_newwork_disconnect:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(R.string.teachbase_newwork_disconnect)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->c(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method


# virtual methods
.method public final f(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->e(I)Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->e(I)Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->e(I)Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->e(I)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->e(I)Z

    move-result v0

    :goto_0
    return v0
.end method
