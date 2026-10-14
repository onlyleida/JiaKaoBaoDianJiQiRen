.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/CarStateAndPositionStarter;",
        "",
        "()V",
        "carPosition",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/CarPositionSender;",
        "carState",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/CarStateSender;",
        "isInit",
        "",
        "start",
        "",
        "stop",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;

.field private static b:Z

.field private static final c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;

.field private static final d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/y;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/y;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->b:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/w;->d()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/y;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/w;->d()V

    :cond_0
    return-void
.end method

.method public static final b()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;->e()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/y;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/w;->e()V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->b:Z

    return-void
.end method
