.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/res/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/res/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/a;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/CarSizeReporter;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    return-void
.end method
