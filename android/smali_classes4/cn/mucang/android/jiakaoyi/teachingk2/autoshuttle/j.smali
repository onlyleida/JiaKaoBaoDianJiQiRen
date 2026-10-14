.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/j;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/j;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/j;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->y(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V

    return-void
.end method
