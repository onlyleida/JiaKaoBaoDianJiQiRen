package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a implements n {
    protected int memoizedHashCode = 0;

    UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException(this);
    }

    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        CodedOutputStream codedOutputStreamJ = CodedOutputStream.J(outputStream, CodedOutputStream.u(CodedOutputStream.v(serializedSize) + serializedSize));
        codedOutputStreamJ.o0(serializedSize);
        writeTo(codedOutputStreamJ);
        codedOutputStreamJ.I();
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0345a<BuilderType extends AbstractC0345a> implements n.a {
        protected static UninitializedMessageException c(n nVar) {
            return new UninitializedMessageException(nVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.n.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public abstract BuilderType a(e eVar, f fVar) throws IOException;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.a$a$a, reason: collision with other inner class name */
        static final class C0346a extends FilterInputStream {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private int f15408a;

            C0346a(InputStream inputStream, int i) {
                super(inputStream);
                this.f15408a = i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int available() throws IOException {
                return Math.min(super.available(), this.f15408a);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                if (this.f15408a <= 0) {
                    return -1;
                }
                int i = super.read();
                if (i >= 0) {
                    this.f15408a--;
                }
                return i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j) throws IOException {
                long jSkip = super.skip(Math.min(j, this.f15408a));
                if (jSkip >= 0) {
                    this.f15408a = (int) (((long) this.f15408a) - jSkip);
                }
                return jSkip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = this.f15408a;
                if (i3 <= 0) {
                    return -1;
                }
                int i4 = super.read(bArr, i, Math.min(i2, i3));
                if (i4 >= 0) {
                    this.f15408a -= i4;
                }
                return i4;
            }
        }
    }
}
