.class public Lcn/mucang/android/jiakaoyi/framework/e/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/location/Location;

.field public static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/e/o;->a:Landroid/location/Location;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/e/o;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/e/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
