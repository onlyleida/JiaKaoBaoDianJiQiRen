.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/c;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/c;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->f(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;)V

    return-void
.end method
