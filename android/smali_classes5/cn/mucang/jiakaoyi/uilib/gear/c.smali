.class public final synthetic Lcn/mucang/jiakaoyi/uilib/gear/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener;


# static fields
.field public static final synthetic a:Lcn/mucang/jiakaoyi/uilib/gear/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/c;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/c;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/c;->a:Lcn/mucang/jiakaoyi/uilib/gear/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->n(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    return-void
.end method
