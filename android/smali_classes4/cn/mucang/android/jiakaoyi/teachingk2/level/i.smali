.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/level/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/level/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/i;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/i;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->u(Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;)V

    return-void
.end method
