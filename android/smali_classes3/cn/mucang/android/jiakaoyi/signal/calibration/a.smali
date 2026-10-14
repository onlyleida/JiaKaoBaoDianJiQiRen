.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/calibration/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:B

.field public final synthetic b:S


# direct methods
.method public synthetic constructor <init>(BS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/signal/calibration/a;->a:B

    iput-short p2, p0, Lcn/mucang/android/jiakaoyi/signal/calibration/a;->b:S

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/calibration/a;->a:B

    iget-short v1, p0, Lcn/mucang/android/jiakaoyi/signal/calibration/a;->b:S

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/calibration/b;->c(BS)[B

    move-result-object v0

    return-object v0
.end method
