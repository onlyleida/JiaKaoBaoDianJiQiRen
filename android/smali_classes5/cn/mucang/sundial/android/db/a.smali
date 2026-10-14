.class public final synthetic Lcn/mucang/sundial/android/db/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcn/mucang/sundial/android/db/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/android/db/a;

    invoke-direct {v0}, Lcn/mucang/sundial/android/db/a;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/db/a;->a:Lcn/mucang/sundial/android/db/a;

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

    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->a()V

    return-void
.end method
