using System.Security.Cryptography;

namespace Mono.Security.Protocol.Tls;

internal class TlsCipherSuite(short code, string name, CipherAlgorithmType cipherAlgorithmType, HashAlgorithmType hashAlgorithmType, ExchangeAlgorithmType exchangeAlgorithmType, bool exportable, bool blockMode, byte keyMaterialSize, byte expandedKeyMaterialSize, short effectiveKeyBytes, byte ivSize, byte blockSize) : CipherSuite(code, name, cipherAlgorithmType, hashAlgorithmType, exchangeAlgorithmType, exportable, blockMode, keyMaterialSize, expandedKeyMaterialSize, effectiveKeyBytes, ivSize, blockSize)
{
	private const int MacHeaderLength = 13;

	private byte[] header;

	private object headerLock = new object();

	public override byte[] ComputeServerRecordMAC(ContentType contentType, byte[] fragment)
	{
		lock (headerLock)
		{
			if (header == null)
			{
				header = new byte[13];
			}
			ulong value = ((Context is ClientContext) ? Context.ReadSequenceNumber : Context.WriteSequenceNumber);
			Write(header, 0, value);
			header[8] = (byte)contentType;
			Write(header, 9, Context.Protocol);
			Write(header, 11, (short)fragment.Length);
			KeyedHashAlgorithm keyedHashAlgorithm = ServerHMAC;
			keyedHashAlgorithm.TransformBlock(header, 0, header.Length, header, 0);
			keyedHashAlgorithm.TransformBlock(fragment, 0, fragment.Length, fragment, 0);
			keyedHashAlgorithm.TransformFinalBlock(CipherSuite.EmptyArray, 0, 0);
			return keyedHashAlgorithm.Hash;
		}
	}

	public override byte[] ComputeClientRecordMAC(ContentType contentType, byte[] fragment)
	{
		lock (headerLock)
		{
			if (header == null)
			{
				header = new byte[13];
			}
			ulong value = ((Context is ClientContext) ? Context.WriteSequenceNumber : Context.ReadSequenceNumber);
			Write(header, 0, value);
			header[8] = (byte)contentType;
			Write(header, 9, Context.Protocol);
			Write(header, 11, (short)fragment.Length);
			KeyedHashAlgorithm keyedHashAlgorithm = ClientHMAC;
			keyedHashAlgorithm.TransformBlock(header, 0, header.Length, header, 0);
			keyedHashAlgorithm.TransformBlock(fragment, 0, fragment.Length, fragment, 0);
			keyedHashAlgorithm.TransformFinalBlock(CipherSuite.EmptyArray, 0, 0);
			return keyedHashAlgorithm.Hash;
		}
	}

	public override void ComputeMasterSecret(byte[] preMasterSecret)
	{
		Context.MasterSecret = new byte[preMasterSecret.Length];
		Context.MasterSecret = PRF(preMasterSecret, "master secret", Context.RandomCS, 48);
	}

	public override void ComputeKeys()
	{
		TlsStream tlsStream = new TlsStream(PRF(Context.MasterSecret, "key expansion", Context.RandomSC, KeyBlockSize));
		Context.Negotiating.ClientWriteMAC = tlsStream.ReadBytes(HashSize);
		Context.Negotiating.ServerWriteMAC = tlsStream.ReadBytes(HashSize);
		Context.ClientWriteKey = tlsStream.ReadBytes(KeyMaterialSize);
		Context.ServerWriteKey = tlsStream.ReadBytes(KeyMaterialSize);
		if (IvSize != 0)
		{
			Context.ClientWriteIV = tlsStream.ReadBytes(IvSize);
			Context.ServerWriteIV = tlsStream.ReadBytes(IvSize);
		}
		else
		{
			Context.ClientWriteIV = CipherSuite.EmptyArray;
			Context.ServerWriteIV = CipherSuite.EmptyArray;
		}
		ClientSessionCache.SetContextInCache(Context);
		tlsStream.Reset();
	}
}
