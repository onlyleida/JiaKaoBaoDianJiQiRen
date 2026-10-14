.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/p;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/p;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/p;

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

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleCancelModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->t(Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleCancelModel;)V

    return-void
.end method
