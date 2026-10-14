.class public final synthetic Lcn/mucang/android/core/identity/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcn/mucang/android/core/identity/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/identity/g;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/g;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/g;->a:Lcn/mucang/android/core/identity/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/core/identity/OaidProviderForInit;->b()V

    return-void
.end method
