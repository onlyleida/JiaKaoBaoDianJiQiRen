.class public final synthetic Lcom/serenegiant/bluetooth/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/serenegiant/bluetooth/BluetoothManager;

.field public final synthetic b:[B

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/bluetooth/BluetoothManager;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/bluetooth/c;->a:Lcom/serenegiant/bluetooth/BluetoothManager;

    iput-object p2, p0, Lcom/serenegiant/bluetooth/c;->b:[B

    iput p3, p0, Lcom/serenegiant/bluetooth/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/serenegiant/bluetooth/c;->a:Lcom/serenegiant/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/serenegiant/bluetooth/c;->b:[B

    iget v2, p0, Lcom/serenegiant/bluetooth/c;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/bluetooth/BluetoothManager;->j([BI)V

    return-void
.end method
