.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/l;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/l;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->C(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method
