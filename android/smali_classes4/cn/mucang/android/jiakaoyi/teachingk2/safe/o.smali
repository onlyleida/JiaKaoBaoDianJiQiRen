.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/o;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/o;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$forceBrakeCommand$1;->a()[B

    move-result-object v0

    return-object v0
.end method
