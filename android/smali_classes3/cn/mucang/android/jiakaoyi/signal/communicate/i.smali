.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/i;->a:[B

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/i;->b:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/i;->a:[B

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/i;->b:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;->a([BI)[B

    move-result-object v0

    return-object v0
.end method
